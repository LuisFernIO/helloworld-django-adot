from django.utils.deprecation import MiddlewareMixin

class LogRequestMiddleware(MiddlewareMixin):
    def process_request(self, request):
        print(f"DEBUG MIDDLEWARE - REQUESTED PATH: {request.path}")
