import Foundation
import UIKit

/// 日付のピック方法を選べるdatePickerTextField
class SelectableDatePickStyleTextField: PatienceTextField {
    var selectedDate = DateForTractableDay() {
        didSet {
            text = selectedDate.dateString
        }
    }

    var isSingleDaySelect = true {
        didSet {
            selectedDate.isIncludeDate = isSingleDaySelect
            selectedDate.injectDate(date: selectedDate.date)
            updatePickStyle()
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        construct()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        construct()
    }

    private func construct() {
        setUpYearAndMonthPickerView()
        setUpDatePickerView()
        updatePickStyle()
    }

    private func setUpYearAndMonthPickerView() {
        font = UIFont.boldSystemFont(ofSize: 20)
        text = DateAndStringConverter.stringFromDate(date: Date(), format: "yyyy年　M月")
        selectedDate.injectDate(date: Date())
        selectedDate.isIncludeDate = isSingleDaySelect
        layer.cornerRadius = 4
        UIFont.boldSystemFont(ofSize: 20)
        backgroundColor = UIColor(hex: "F0E68C")
        textColor = UIColor.black
        textAlignment = .center

        yearAndMonthPickerView.delegate = self
        yearAndMonthPickerView.dataSource = self
        inputView = yearAndMonthPickerView
        inputAccessoryView = keyboardToolbar
    }

    private func setUpDatePickerView() {
        datePickerView.datePickerMode = .date
        datePickerView.preferredDatePickerStyle = .wheels
        datePickerView.locale = .current
    }

    private func updatePickStyle() {
        inputView = isSingleDaySelect ? datePickerView : yearAndMonthPickerView
    }

    private lazy var years: [Int] = { (2000...currentYear).reversed().map { $0 } }()

    private let months = (1...12).map { $0 }

    private let yearAndMonthPickerView = UIPickerView()

    private let datePickerView = UIDatePicker()

    private lazy var keyboardToolbar: UIToolbar = {
        let toolbar = UIToolbar()
        toolbar.items = [
            UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil),
            UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneButtonAction(_:)))
        ]
        toolbar.sizeToFit()
        return toolbar
    }()

    private lazy var currentYear: Int = {
        guard let currentYear = Int(DateAndStringConverter.stringFromDate(date: Date(), format: "yyyy")) else {
            return  2000
        }
        return currentYear
    }()

    @objc private func doneButtonAction(_ : UIBarButtonItem) {
        selectedDate.injectDate(date: datePickerView.date)
        text = selectedDate.dateString
        endEditing(true)
    }
}

// MARK: - UIPickerViewDelegate,UIPickerViewDataSource
extension SelectableDatePickStyleTextField: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        2
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return years.count
        } else if component == 1 {
            return months.count
        } else {
            return 0
        }
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return "\(years[row])年"
        } else if component == 1 {
            return "\(months[row])月"
        } else {
            return nil
        }
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedDate.year = years[pickerView.selectedRow(inComponent: 0)]
        selectedDate.month = months[pickerView.selectedRow(inComponent: 1)]
    }
}