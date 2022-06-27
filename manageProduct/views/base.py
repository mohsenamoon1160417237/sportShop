from rest_framework.generics import GenericAPIView
from rest_framework.response import Response


class Base(GenericAPIView):

    def get(self, request):

        return Response({'response': 'coming soon'})
    