import React, { Component } from "react"
import { View, Text, StyleSheet, Button } from "react-native"
import { Client } from "bugsnag-react-native"

interface State {
    isLoading: boolean
}

export class AppInit extends Component<{}, State> {
    state: State = {
        isLoading: true
    }

    constructor(props) {
        super(props)
    }

    async componentDidMount() {
        this.setState({
            isLoading: false
        })
    }

    render() {
        return (
            <View style={styles.container}>
                <Text style={styles.text}>TESTAPP</Text>
                <Button onPress={this.testBugsnag} title="Trigger BS Error" />
            </View>
        )
    }

    testBugsnag() {
        const key = "add-bugsnag-key-here"
        const bugsnag = new Client(key)

        bugsnag.notify(new Error("Test notification from React-Native!"))
    }
}

const styles = StyleSheet.create({
    container: {
        flex: 1,
        alignItems: "center",
        justifyContent: "center"
    },
    text: {
        fontSize: 32
    }
})
