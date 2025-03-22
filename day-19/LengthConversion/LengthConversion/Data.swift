//
//  Data.swift
//  LengthConversion
//
//  Created by Nessa on 22/03/25.
//


let unitConversion: [String: [String: Double]] = [
    "meter": [
        "kilometer": 0.001,
        "feet":  3.28084,
        "yard": 1.09361,
        "mile": 0.000621371,
        "meter": 1.0
    ],
    "kilometer": [
        "meter": 1000.0,
        "feet": 3280.84,
        "yard": 1093.61,
        "mile": 0.621371,
        "kilometer": 1.0
    ],
    "feet": [
        "kilometer": 0.0003048,
        "meter": 0.3048,
        "yard": 0.333333,
        "mile": 0.000189394,
        "feet": 1.0
    ],
    "yard": [
        "kilometer": 0.0009144,
        "feet": 3.0,
        "meter": 0.9144,
        "mile": 0.000568182,
        "yard": 1.0
    ],
    "mile": [
        "kilometer": 1.60934,
        "feet": 5280,
        "yard": 1760,
        "meter": 1609.34,
        "mile": 1.0
    ]
]
