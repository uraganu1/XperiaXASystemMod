.class Lcom/sonyericsson/conversations/ui/SaveVCardActivity$1;
.super Ljava/lang/Object;
.source "SaveVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/SaveVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v6, 0x0

    .line 83
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->-get1(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;)Lcom/android/vcard/VCardEntry;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 85
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->-get1(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;)Lcom/android/vcard/VCardEntry;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->-get2(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;)Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/android/vcard/VCardEntry;->constructInsertOperations(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 88
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->-get2(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "com.android.contacts"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    .line 97
    const v4, 0x7f0b0094

    .line 98
    const/4 v5, 0x0

    .line 96
    invoke-static {v3, v4, v5}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 100
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    invoke-static {v3, v6}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->-set2(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;

    .line 101
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->finish()V

    .line 82
    return-void

    .line 91
    .restart local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/content/OperationApplicationException;
    const-string/jumbo v3, "Application fails while saving contact."

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    .end local v0    # "e":Landroid/content/OperationApplicationException;
    :catch_1
    move-exception v1

    .line 90
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Error communicating with remote device while saving contact."

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
