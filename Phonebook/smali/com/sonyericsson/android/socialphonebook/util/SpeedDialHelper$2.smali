.class Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper$2;
.super Ljava/lang/Object;
.source "SpeedDialHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;->asyncDeleteEntryByPosition(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;
    .param p2, "val$position"    # I

    .prologue
    .line 117
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper$2;->this$0:Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;

    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper$2;->this$0:Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper$2;->val$position:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;->deleteEntryByPosition(I)I

    .line 119
    return-void
.end method