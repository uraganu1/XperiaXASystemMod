.class Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper$1;
.super Ljava/lang/Object;
.source "SpeedDialHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;->asyncCreateNewEntry(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;

.field final synthetic val$dataId:J

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;IJ)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;
    .param p2, "val$position"    # I
    .param p3, "val$dataId"    # J

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper$1;->this$0:Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;

    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper$1;->val$position:I

    iput-wide p3, p0, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper$1;->val$dataId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper$1;->this$0:Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper$1;->val$position:I

    iget-wide v2, p0, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper$1;->val$dataId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;->createNewEntry(IJ)Landroid/net/Uri;

    .line 51
    return-void
.end method
