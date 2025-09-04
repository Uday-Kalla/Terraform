FROM public.ecr.aws/lambda/nodejs:18

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy app code
COPY appointment-service.js ./

# Lambda entrypoint
CMD ["appointment-service.handler"]
