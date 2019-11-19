float tryParseFloat(String s) {
    try {
        float value = Float.parseFloat(s);
        return value;
    }
    catch (NumberFormatException e) {
        return 0;
    }
}

String printFloatArray(float[] fs)
{
  String out = "";
  for(int i = 0; i < fs.length; i++)
  {
    out += Float.toString(fs[i]) + " ";
  }
  return out;
}
