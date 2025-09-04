FROM public.ecr.aws/lambda/nodejs:18

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy app code
COPY patient-service.js ./

# Lambda entrypoint
CMD ["patient-service.handler"]
