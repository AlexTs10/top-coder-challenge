#!/bin/bash
# Simple reimbursement algorithm derived from decision tree
python3 - "$1" "$2" "$3" <<'PY'
import sys
trip_duration_days=float(sys.argv[1])
miles=float(sys.argv[2])
receipts=float(sys.argv[3])

def predict(days,miles,receipts):
    if receipts <= 828.10:
        if days <= 4.50:
            if miles <= 583.00:
                if receipts <= 562.04:
                    if days <= 1.50:
                        return 232.49
                    else:
                        return 448.19
                else:
                    if receipts <= 639.15:
                        return 568.94
                    else:
                        return 729.37
            else:
                if receipts <= 563.10:
                    if days <= 2.50:
                        return 625.39
                    else:
                        return 772.36
                else:
                    if miles <= 722.00:
                        return 826.65
                    else:
                        return 1067.42
        else:
            if miles <= 624.50:
                if days <= 8.50:
                    if miles <= 262.97:
                        return 637.91
                    else:
                        return 878.02
                else:
                    if receipts <= 567.01:
                        return 903.68
                    else:
                        return 1179.01
            else:
                if receipts <= 491.49:
                    if days <= 10.50:
                        return 1049.30
                    else:
                        return 1306.63
                else:
                    if miles <= 833.50:
                        return 1233.69
                    else:
                        return 1467.80
    else:
        if days <= 5.50:
            if miles <= 621.00:
                if receipts <= 1235.90:
                    if receipts <= 1220.09:
                        return 1126.41
                    else:
                        return 511.23
                else:
                    if days <= 2.50:
                        return 1246.03
                    else:
                        return 1426.80
            else:
                if days <= 4.50:
                    if receipts <= 979.16:
                        return 1167.12
                    else:
                        return 1473.18
                else:
                    if receipts <= 1120.38:
                        return 1517.89
                    else:
                        return 1716.68
        else:
            if miles <= 644.50:
                if receipts <= 1058.59:
                    if receipts <= 952.12:
                        return 1266.73
                    else:
                        return 1455.42
                else:
                    if days <= 10.50:
                        return 1557.78
                    else:
                        return 1745.83
            else:
                if miles <= 934.50:
                    if days <= 9.50:
                        return 1740.90
                    else:
                        return 1828.62
                else:
                    if receipts <= 1830.02:
                        return 2009.88
                    else:
                        return 1859.95

print(f"{predict(trip_duration_days, miles, receipts):.2f}")
PY
