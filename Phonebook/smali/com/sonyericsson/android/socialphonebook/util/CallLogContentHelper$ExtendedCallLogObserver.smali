.class Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$ExtendedCallLogObserver;
.super Landroid/database/ContentObserver;
.source "CallLogContentHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtendedCallLogObserver"
.end annotation


# instance fields
.field private mQueryCommandCreator:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;
    .param p2, "queryCommandCreator"    # Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;

    .prologue
    .line 919
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$ExtendedCallLogObserver;->this$0:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    .line 920
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 921
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$ExtendedCallLogObserver;->mQueryCommandCreator:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;

    .line 919
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 926
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$ExtendedCallLogObserver;->this$0:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$ExtendedCallLogObserver;->mQueryCommandCreator:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;

    invoke-interface {v1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;->create()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->queryAsync(Ljava/lang/Runnable;)V

    .line 925
    return-void
.end method
