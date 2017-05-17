.class Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader$1;
.super Landroid/database/ContentObserver;
.source "SpeedDialListLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->onStartLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader$1;->this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader$1;->this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->onContentChanged()V

    .line 121
    return-void
.end method
