import React, { Component } from "react"
import { View, Text, StyleSheet } from "react-native"
import Config from "react-native-config"

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
        const testValue = Config.TEST_VALUE

        return (
            <View style={styles.container}>
                <Text style={styles.text}>TESTAPP</Text>
                <Text style={styles.text}>Test value: {testValue}</Text>
            </View>
        )
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
