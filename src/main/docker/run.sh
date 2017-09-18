#!/usr/bin/env sh

# Set debug options if required
if [ x"${JAVA_ENABLE_DEBUG}" != x ] && [ "${JAVA_ENABLE_DEBUG}" == "true" ]; then
    java_debug_args="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=${JAVA_DEBUG_PORT:-5005}"
fi

# Start application
echo "Launching application"
arg_list="${exec_args} java ${java_debug_args} -Djava.security.egd=file:/dev/./urandom -jar /app.jar"
echo "Running ${arg_list}"

exec ${arg_list}