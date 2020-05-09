import React from 'react'
import {AppRegistry, StyleSheet, Text, View, NativeModules, TouchableOpacity} from 'react-native'

console.log('NativeModules', NativeModules.NativeModuleExmp.getNativeData((err, res)=>{if(res){console.warn('wohoo', res)}}))
const nativeObj = NativeModules.NativeModuleExmp

class ReactNComponent extends React.Component {
    render() {
        return(
            <View style={styles.container}>
              <TouchableOpacity
                // onPress={()=>{nativeObj.show()}}
              >
                <Text style={styles.hello}>Hello, changes are in React-Native Module</Text>
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