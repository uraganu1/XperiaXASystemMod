.class Lcom/sonyericsson/conversations/ui/SaveVCardActivity$ContactDetailsFetchTask;
.super Landroid/os/AsyncTask;
.source "SaveVCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/SaveVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactDetailsFetchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Lcom/android/vcard/VCardEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$ContactDetailsFetchTask;->this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;Lcom/sonyericsson/conversations/ui/SaveVCardActivity$ContactDetailsFetchTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$ContactDetailsFetchTask;-><init>(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Lcom/android/vcard/VCardEntry;
    .locals 2
    .param p1, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$ContactDetailsFetchTask;->this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/util/VCardUtil;->getAllVCardContactDetails(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/vcard/VCardEntry;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "uris"    # [Ljava/lang/Object;

    .prologue
    .line 57
    check-cast p1, [Landroid/net/Uri;

    .end local p1    # "uris":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$ContactDetailsFetchTask;->doInBackground([Landroid/net/Uri;)Lcom/android/vcard/VCardEntry;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/vcard/VCardEntry;)V
    .locals 5
    .param p1, "vCardEntry"    # Lcom/android/vcard/VCardEntry;

    .prologue
    .line 63
    if-eqz p1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$ContactDetailsFetchTask;->this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    invoke-static {v1, p1}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->-set1(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;Lcom/android/vcard/VCardEntry;)Lcom/android/vcard/VCardEntry;

    .line 65
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$ContactDetailsFetchTask;->this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->-wrap0(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$ContactDetailsFetchTask;->this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$ContactDetailsFetchTask;->this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->-set2(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;

    .line 67
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$ContactDetailsFetchTask;->this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$ContactDetailsFetchTask;->this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 70
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$ContactDetailsFetchTask;->this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->-get3(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    .line 69
    const v4, 0x7f0b00a0

    .line 67
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 71
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$ContactDetailsFetchTask;->this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->-get0(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    const v4, 0x7f0b015a

    .line 67
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 72
    const/4 v3, 0x1

    .line 67
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 72
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$ContactDetailsFetchTask;->this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->-get4(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v3

    .line 67
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->-set0(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 62
    .end local v0    # "message":Ljava/lang/String;
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$ContactDetailsFetchTask;->this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->finish()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "vCardEntry"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Lcom/android/vcard/VCardEntry;

    .end local p1    # "vCardEntry":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$ContactDetailsFetchTask;->onPostExecute(Lcom/android/vcard/VCardEntry;)V

    return-void
.end method
