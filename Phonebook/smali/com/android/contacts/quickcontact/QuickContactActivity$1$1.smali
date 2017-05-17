.class Lcom/android/contacts/quickcontact/QuickContactActivity$1$1;
.super Landroid/os/AsyncTask;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity$1;->sendDataUsageFeedback(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$1;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/contacts/quickcontact/QuickContactActivity$1;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$1$1;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 466
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity$1$1;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 467
    sget-object v2, Landroid/provider/ContactsContract$DataUsageFeedback;->FEEDBACK_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 468
    aget-object v3, p1, v3

    .line 467
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 469
    const-string/jumbo v3, "type"

    const/4 v4, 0x1

    aget-object v4, p1, v4

    .line 467
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 471
    .local v0, "dataUsageUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$1$1;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$1;

    iget-object v2, v2, Lcom/android/contacts/quickcontact/QuickContactActivity$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 472
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 471
    invoke-virtual {v2, v0, v3, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    .line 473
    .local v1, "successful":Z
    :goto_0
    if-nez v1, :cond_0

    .line 474
    invoke-static {}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "DataUsageFeedback increment failed"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_0
    return-object v5

    .line 471
    .end local v1    # "successful":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "successful":Z
    goto :goto_0
.end method
