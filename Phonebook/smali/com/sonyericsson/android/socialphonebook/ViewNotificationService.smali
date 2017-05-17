.class public Lcom/sonyericsson/android/socialphonebook/ViewNotificationService;
.super Landroid/app/Service;
.source "ViewNotificationService.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ViewNotificationService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/sonyericsson/android/socialphonebook/ViewNotificationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ViewNotificationService;->TAG:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 49
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 50
    :goto_0
    new-instance v0, Lcom/android/contacts/common/model/ContactLoader;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/contacts/common/model/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 51
    .local v0, "contactLoader":Lcom/android/contacts/common/model/ContactLoader;
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/ViewNotificationService$1;

    invoke-direct {v2, p0, p3}, Lcom/sonyericsson/android/socialphonebook/ViewNotificationService$1;-><init>(Lcom/sonyericsson/android/socialphonebook/ViewNotificationService;I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/android/contacts/common/model/ContactLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 72
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ContactLoader;->startLoading()V

    .line 73
    const/4 v2, 0x3

    return v2

    .line 49
    .end local v0    # "contactLoader":Lcom/android/contacts/common/model/ContactLoader;
    :cond_0
    const/4 v1, 0x0

    .local v1, "data":Landroid/net/Uri;
    goto :goto_0
.end method
