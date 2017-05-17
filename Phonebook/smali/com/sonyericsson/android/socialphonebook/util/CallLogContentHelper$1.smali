.class Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$1;
.super Ljava/lang/Object;
.source "CallLogContentHelper.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->getFilteredCallLogQueryCommandCreator(Landroid/content/Context;Z)Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$excludeUnknownPhoneNumber:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;Landroid/content/Context;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;
    .param p2, "val$context"    # Landroid/content/Context;
    .param p3, "val$excludeUnknownPhoneNumber"    # Z

    .prologue
    .line 194
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$1;->this$0:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$1;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$1;->val$excludeUnknownPhoneNumber:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Ljava/lang/Runnable;
    .locals 4

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$1;->this$0:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$1;->this$0:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$1;->val$context:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$1;->val$excludeUnknownPhoneNumber:Z

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->getFilteredSelection(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->-wrap1(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method
