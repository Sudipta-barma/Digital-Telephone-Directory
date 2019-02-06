from django.core.paginator import Paginator, InvalidPage, EmptyPage, PageNotAnInteger

def paginate_result(request, object_list, item_per_page):
    paginator = Paginator(object_list, item_per_page)

    page = request.GET.get('page')

    try:
        results = paginator.page(page)
    except PageNotAnInteger:
        results = paginator.page(1)
    except EmptyPage:
        results = paginator.page(paginator.num_pages)

    return results 