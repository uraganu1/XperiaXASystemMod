.class Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$ImportRequestConnection;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportRequestConnection"
.end annotation


# instance fields
.field private mService:Lcom/android/contacts/common/vcard/VCardService;

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    .prologue
    .line 997
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$ImportRequestConnection;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$ImportRequestConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$ImportRequestConnection;-><init>(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 1007
    check-cast p2, Lcom/android/contacts/common/vcard/VCardService$MyBinder;

    .end local p2    # "binder":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/android/contacts/common/vcard/VCardService$MyBinder;->getService()Lcom/android/contacts/common/vcard/VCardService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$ImportRequestConnection;->mService:Lcom/android/contacts/common/vcard/VCardService;

    .line 1008
    const-string/jumbo v0, "ImportVCardActivity"

    .line 1009
    const-string/jumbo v1, "Connected to VCardService. Kick a vCard read thread (uri: %s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1010
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$ImportRequestConnection;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->-get7(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->getSourceUris()[Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1009
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1008
    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$ImportRequestConnection;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->-get7(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->start()V

    .line 1006
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 1016
    const-string/jumbo v0, "ImportVCardActivity"

    const-string/jumbo v1, "Disconnected from VCardService"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    return-void
.end method

.method public sendImportRequest(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/vcard/ImportRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1001
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/vcard/ImportRequest;>;"
    const-string/jumbo v0, "ImportVCardActivity"

    const-string/jumbo v1, "Send an import request"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$ImportRequestConnection;->mService:Lcom/android/contacts/common/vcard/VCardService;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$ImportRequestConnection;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->-get4(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)Lcom/android/contacts/common/vcard/VCardImportExportListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$ImportRequestConnection;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    iget-boolean v2, v2, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->mIsFromNfc:Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/contacts/common/vcard/VCardService;->handleImportRequest(Ljava/util/List;Lcom/android/contacts/common/vcard/VCardImportExportListener;Z)V

    .line 1000
    return-void
.end method
