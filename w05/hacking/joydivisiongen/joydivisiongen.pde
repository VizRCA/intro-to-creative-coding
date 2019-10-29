//Processing code by Etienne Jacob

float margin = 100;
float n = 100;
float K = 130;

float SEED, SEED2;

float t;

float pow2(float p, float q) {
	return ((p >= 0) ? pow(p, q) : -pow(-p, q));
}

float distort(float v, float p) {
	return 6.0 * (noise(SEED2 + nfreq * v, 2 * SEED2 + nfreq2 * p) - 0.47);
}

float scl, scl2, amp, amp2, rad, nbranch, offsetf, offsetf2, nfreq, nfreq2, biasy;

int type;

int j = 0;

void initialize() {
	noiseDetail(floor(random(2)) + 2);

	background(15);

	SEED = random(100, 1000);
	SEED2 = random(100, 1000);

	j = 0;

	t = 0;

	scl = 0.03 * pow(random(1), 2.0);
	scl2 = random(0.02, 0.04);
	rad = random(0.06,0.2);
	amp = random(10, 30)/rad;
	amp2 = random(2, 8);
	nbranch = floor(random(2)) * floor(1 + random(3));
	offsetf = 0.05 * pow(random(1), 2.0);
	offsetf2 = random(1.5, 4);
	nfreq = random(1, 3);
	nfreq2 = 0.01 * pow(random(1), 1.5);
	biasy = 0.1 * randomGaussian();
	//direction = 1.0 * randomGaussian();
}

void mousePressed() {
	initialize();
}

void keyPressed() {
	saveFrame("frame" + random(100000) + ".jpg");
}

void setup() {
	size(700, 700, P2D);
	initialize();
}

void draw() {
	if (j <= n) {
		drawCurve(j);
		j++;
	}
}

void drawCurve(int k) {
	for (int i = 0; i <= K * n; i++) {
		float x = map(i, 0, K * n, margin, width - margin);
		float y = map(k, 0, n, margin, height - margin);

		float r = dist(x, y, width / 2, height / 2);

		//float offset = 0*offsetf*r + 1*1.0*offsetf*x + nbranch*atan2(y-height/2,x-width/2)/TWO_PI;

		float offset = offsetf2 * noise(3 * SEED + scl2 * x, scl2 * y);


		float dx = sin(PI * k / n) * sin(PI * i / n / K) * amp * pow2(distort(map(noise(SEED + rad * cos(TWO_PI * (t - offset)), SEED + rad * sin(TWO_PI * (t - offset)), scl * r), 0, 1, -1, 1), r), 2.0);
		float dy = sin(PI * k / n) * sin(PI * i / n / K) * amp * (biasy + pow2(distort(map(noise(2 * SEED + rad * cos(TWO_PI * (t - offset)), 2*SEED + rad * sin(TWO_PI * (t - offset)), scl * r), 0, 1, -1, 1), r), 2.0));

		float std = 0.5;

		dx += std * randomGaussian();
		dy += std * randomGaussian();

		stroke(255, 5 * (1 + 2.0 * sin(PI * i / n / K)));
		strokeWeight(1.0);
		point(x + dx, y + dy);
	}
}
