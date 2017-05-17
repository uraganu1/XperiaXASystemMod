.class public Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ServiceInfo;
.super Ljava/lang/Object;
.source "ContactsStatusMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceInfo"
.end annotation


# instance fields
.field private final mIconUri:Ljava/lang/String;

.field private final mLabelUri:Ljava/lang/String;

.field private final mPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "aPackage"    # Ljava/lang/String;
    .param p2, "aIconId"    # Ljava/lang/String;
    .param p3, "aLabelId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 417
    const-string/jumbo v0, "ContactsStatusMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " ServiceInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 418
    const-string/jumbo v2, "/"

    .line 417
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 418
    const-string/jumbo v2, "/"

    .line 417
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ServiceInfo;->mPackage:Ljava/lang/String;

    .line 421
    if-nez p2, :cond_1

    .line 422
    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ServiceInfo;->mIconUri:Ljava/lang/String;

    .line 429
    :goto_0
    if-nez p3, :cond_3

    .line 430
    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ServiceInfo;->mLabelUri:Ljava/lang/String;

    .line 415
    :goto_1
    return-void

    .line 423
    :cond_1
    const-string/jumbo v0, "android.resource"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 424
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ServiceInfo;->mIconUri:Ljava/lang/String;

    goto :goto_0

    .line 426
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 427
    const-string/jumbo v1, "/drawable/"

    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ServiceInfo;->mIconUri:Ljava/lang/String;

    goto :goto_0

    .line 431
    :cond_3
    const-string/jumbo v0, "android.resource"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 432
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ServiceInfo;->mLabelUri:Ljava/lang/String;

    goto :goto_1

    .line 434
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 435
    const-string/jumbo v1, "/string/"

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ServiceInfo;->mLabelUri:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public getIconUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ServiceInfo;->mIconUri:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ServiceInfo;->mLabelUri:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ServiceInfo;->mPackage:Ljava/lang/String;

    return-object v0
.end method
