//
//  Copyright 2016 Lionheart Software LLC
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
//

import Foundation

public extension IndexPath {
    public init<T: RawRepresentable>(row: T, section: Int) where T.RawValue == Int {
        self.init(row: row.rawValue, section: section)
    }

    public init<T: RawRepresentable>(row: Int, section: T) where T.RawValue == Int {
        self.init(row: row, section: section.rawValue)
    }

    public init<T: RawRepresentable>(row: T, section: T) where T.RawValue == Int {
        self.init(row: row.rawValue, section: section.rawValue)
    }

    public static func ==(tuple: (Int, Int), indexPath: IndexPath) -> Bool {
        return indexPath.section == tuple.0 && indexPath.row == tuple.1
    }

    public static func ==(indexPath: IndexPath, tuple: (Int, Int)) -> Bool {
        return indexPath.section == tuple.0 && indexPath.row == tuple.1
    }
}
