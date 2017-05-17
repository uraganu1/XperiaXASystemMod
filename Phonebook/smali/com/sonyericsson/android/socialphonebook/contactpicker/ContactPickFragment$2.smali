.class Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$2;
.super Ljava/lang/Object;
.source "ContactPickFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    .prologue
    .line 470
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 488
    const/4 v0, 0x0

    return v0

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->-wrap5(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->setQueryString(Ljava/lang/String;)V

    .line 493
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 478
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)Landroid/app/Activity;

    move-result-object v1

    .line 479
    const-string/jumbo v2, "input_method"

    .line 478
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 480
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mSearchBox:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 482
    return v3
.end method
