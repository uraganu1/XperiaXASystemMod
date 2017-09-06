.class Lcom/android/incallui/ContactInfoCache$2;
.super Landroid/os/AsyncTask;
.source "ContactInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/ContactInfoCache;->maybeInsertCnapInformationIntoCache(Landroid/content/Context;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/ContactInfoCache;


# direct methods
.method constructor <init>(Lcom/android/incallui/ContactInfoCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/ContactInfoCache;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/incallui/ContactInfoCache$2;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 150
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/incallui/ContactInfoCache$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 173
    const/4 v0, 0x0

    return-object v0
.end method
