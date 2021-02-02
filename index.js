import React from 'react'
import {AppRegistry, StyleSheet, Text, View, NativeModules, TouchableOpacity} from 'react-native'

const nativeObj = NativeModules.NativeGoBack

class ReactNComponent extends React.Component {
    render() {
        return(
            <View style={styles.container}>
              <TouchableOpacity
                onPress={()=>{nativeObj.goBackToNative()}}
              >
                <Text style={styles.hello}>Press Here to go back to native</Text>
              </TouchableOpacity>
            </View>
        )
    }
}

class AnotherComponent extends React.Component {
  render() {
    return(
        <View style={styles.container}>
          <TouchableOpacity
            // onPress={()=>{nativeObj.show()}}
          >
            <Text style={styles.hello}>Hello, This is AnotherComponent Module</Text>
          </TouchableOpacity>
        </View>
    )
}
}

const styles = StyleSheet.create({
    container: {
      flex: 1,
      justifyContent: 'center',
    },
    hello: {
      fontSize: 20,
      textAlign: 'center',
      margin: 10,
    },
  });

  AppRegistry.registerComponent('RNWithNative', () => ReactNComponent);
  AppRegistry.registerComponent('AnotherComponent', () => AnotherComponent);