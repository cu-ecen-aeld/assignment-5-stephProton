#to be done
echo "custom post-build script that modify finder-test.sh to modify conf/ folder location"
# Ensure TARGET_DIR is set
if [ -z "${TARGET_DIR}" ]; then
    echo "Error: TARGET_DIR is not set."
    exit 1
fi

SCRIPT_PATH="${TARGET_DIR}/usr/bin/finder-test.sh"

echo " sed -i 's|conf/|/etc/finder-app/conf/|'"
echo "s|\.\./| |"
echo "s|/writer|/usr/bin/writer|"

sed -i 's|conf/|/etc/finder-app/conf/|' ${SCRIPT_PATH}
sed -i 's|\.\./| |' ${SCRIPT_PATH}
sed -i 's|\./writer|/usr/bin/writer|' ${SCRIPT_PATH}
sed -i 's|\./finder|/usr/bin/finder|' ${SCRIPT_PATH}
