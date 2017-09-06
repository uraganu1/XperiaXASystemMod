.class public Lcom/android/incallui/ContactsAsyncHelper;
.super Ljava/lang/Object;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ContactsAsyncHelper$OnImageLoadCompleteListener;,
        Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;,
        Lcom/android/incallui/ContactsAsyncHelper$WorkerExtensionArgs;,
        Lcom/android/incallui/ContactsAsyncHelper$WorkerHandler;,
        Lcom/android/incallui/ContactsAsyncHelper$1;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/incallui/ContactsAsyncHelper;

.field private static sThreadHandler:Landroid/os/Handler;


# instance fields
.field private final mResultHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/incallui/ContactsAsyncHelper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ContactsAsyncHelper;->mResultHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/android/incallui/ContactsAsyncHelper;

    invoke-direct {v0}, Lcom/android/incallui/ContactsAsyncHelper;-><init>()V

    sput-object v0, Lcom/android/incallui/ContactsAsyncHelper;->sInstance:Lcom/android/incallui/ContactsAsyncHelper;

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v1, Lcom/android/incallui/ContactsAsyncHelper$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/ContactsAsyncHelper$1;-><init>(Lcom/android/incallui/ContactsAsyncHelper;)V

    iput-object v1, p0, Lcom/android/incallui/ContactsAsyncHelper;->mResultHandler:Landroid/os/Handler;

    .line 225
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ContactsAsyncWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 226
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 227
    new-instance v1, Lcom/android/incallui/ContactsAsyncHelper$WorkerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/ContactsAsyncHelper$WorkerHandler;-><init>(Lcom/android/incallui/ContactsAsyncHelper;Landroid/os/Looper;)V

    sput-object v1, Lcom/android/incallui/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    .line 224
    return-void
.end method

.method public static final startObtainGawAsync(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/incallui/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V
    .locals 4
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/android/incallui/ContactsAsyncHelper$OnImageLoadCompleteListener;
    .param p5, "cookie"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 300
    new-instance v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;

    invoke-direct {v0, v3}, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;-><init>(Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;)V

    .line 301
    .local v0, "args":Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;
    iput-object p5, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 302
    iput-object p1, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    .line 303
    new-instance v2, Lcom/android/incallui/ContactsAsyncHelper$WorkerExtensionArgs;

    invoke-direct {v2, v3}, Lcom/android/incallui/ContactsAsyncHelper$WorkerExtensionArgs;-><init>(Lcom/android/incallui/ContactsAsyncHelper$WorkerExtensionArgs;)V

    iput-object v2, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->extension:Lcom/android/incallui/ContactsAsyncHelper$WorkerExtensionArgs;

    .line 304
    iget-object v2, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->extension:Lcom/android/incallui/ContactsAsyncHelper$WorkerExtensionArgs;

    iput-object p2, v2, Lcom/android/incallui/ContactsAsyncHelper$WorkerExtensionArgs;->name:Ljava/lang/String;

    .line 305
    iget-object v2, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->extension:Lcom/android/incallui/ContactsAsyncHelper$WorkerExtensionArgs;

    iput-object p3, v2, Lcom/android/incallui/ContactsAsyncHelper$WorkerExtensionArgs;->phoneNumber:Ljava/lang/String;

    .line 306
    iput-object p4, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->listener:Lcom/android/incallui/ContactsAsyncHelper$OnImageLoadCompleteListener;

    .line 309
    sget-object v2, Lcom/android/incallui/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 310
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x64

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 311
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 313
    const-string/jumbo v2, "startObtainGawAsync"

    const-string/jumbo v3, "Begin generating artwork."

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    sget-object v2, Lcom/android/incallui/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 295
    return-void
.end method

.method public static final startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/incallui/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V
    .locals 5
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayPhotoUri"    # Landroid/net/Uri;
    .param p3, "listener"    # Lcom/android/incallui/ContactsAsyncHelper$OnImageLoadCompleteListener;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 250
    if-nez p2, :cond_0

    .line 251
    const-string/jumbo v2, "startObjectPhotoAsync"

    const-string/jumbo v3, "Uri is missing"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    return-void

    .line 259
    :cond_0
    new-instance v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;

    invoke-direct {v0, v2}, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;-><init>(Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;)V

    .line 260
    .local v0, "args":Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;
    iput-object p4, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 261
    iput-object p1, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    .line 262
    iput-object p2, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->displayPhotoUri:Landroid/net/Uri;

    .line 263
    iput-object p3, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->listener:Lcom/android/incallui/ContactsAsyncHelper$OnImageLoadCompleteListener;

    .line 266
    sget-object v2, Lcom/android/incallui/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 267
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 268
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 270
    const-string/jumbo v2, "startObjectPhotoAsync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Begin loading image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->displayPhotoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 271
    const-string/jumbo v4, ", displaying default image for now."

    .line 270
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    sget-object v2, Lcom/android/incallui/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 247
    return-void
.end method
