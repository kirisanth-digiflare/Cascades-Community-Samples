/* Copyright (c) 2013 Research In Motion Limited.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import bb.cascades 1.0

Sheet {
    id: root
    Page {
        actionBarVisibility: ChromeVisibility.Visible
        Container {
            layout: StackLayout {
            }
            leftPadding: 20
            rightPadding: 20
            verticalAlignment: VerticalAlignment.Fill
            Label {
                id: lblHeading_about
                text: qsTr("About CscMonitor")
                textStyle {
                    base: SystemDefaults.TextStyles.BigText
                    color: Color.Gray
                }
                verticalAlignment: VerticalAlignment.Center
                horizontalAlignment: HorizontalAlignment.Center
            }
            Label {
                id: lblHeading_version
                text: qsTr("V1.0.0")
                verticalAlignment: VerticalAlignment.Center
                horizontalAlignment: HorizontalAlignment.Center
            }
            Label {
                id: lblBody_about
                text: qsTr("The CscMonitor application demonstrates how to acquire and use data transmitted by a Bluetooth 4.0 LE CSC (Cycling Speed and Cadence) device")
                multiline: true
                textStyle {
                    base: SystemDefaults.TextStyles.BodyText
                    color: Color.Gray
                    fontFamily: "Courier"
                    lineHeight: 1.1
                }
            }
            Label {
                id: lblAuthors
                text: qsTr("Authors:")
                multiline: true
                textStyle {
                    base: SystemDefaults.TextStyles.BodyText
                    color: Color.Gray
                    fontFamily: "Courier"
                    lineHeight: 1.1
                }
            }
            Label {
                id: lblAuthors1
                text: qsTr("Martin Woolley (@mdwrim)")
                multiline: true
                textStyle {
                    base: SystemDefaults.TextStyles.BodyText
                    color: Color.Gray
                    fontFamily: "Courier"
                    lineHeight: 1.1
                }
            }
            Label {
                id: lblAuthors2
                text: qsTr("John Murray (@jcmrim)")
                multiline: true
                textStyle {
                    base: SystemDefaults.TextStyles.BodyText
                    color: Color.Gray
                    fontFamily: "Courier"
                    lineHeight: 1.1
                }
            }
        }
        actions: [
            ActionItem {
                title: "Back"
                imageSource: "asset:///images/ic_previous.png"
                ActionBar.placement: ActionBarPlacement.OnBar
                onTriggered: {
                    root.close();
                }
            },
            InvokeActionItem {
                id: shareMe
                ActionBar.placement: ActionBarPlacement.OnBar
                query {
                    mimeType: "text/plain"
                    invokeActionId: "bb.action.SHARE"
                    onQueryChanged: {
                        shareMe.query.updateQuery();
                    }
                }
                handler: InvokeHandler {
                    id: shareHandler
                    onInvoking: {
                        shareMe.data = "Check out the #BlackBerry10 'CscMonitor' " + "Sample App on Git Hub written by @jcmrim and @mdwrim " + "here http://bit.ly/SJBBKl";
                        shareHandler.confirm();
                    }
                }
            }
        ]

    }
}
