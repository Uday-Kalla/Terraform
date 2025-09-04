FROM public.ecr.aws/lambda/nodejs:18

# Install dependencies
COPY package*.json ./
RUN npm install --only=production

# Copy app source
COPY . .

# Command for Lambda
CMD [ "patient-service.handler" ]
