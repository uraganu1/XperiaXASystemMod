.class Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapsedLogItem;
.super Ljava/lang/Object;
.source "CallLogMergeCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CollapsedLogItem"
.end annotation


# instance fields
.field private mLogItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 342
    .local p1, "logItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapsedLogItem;->mLogItems:Ljava/util/List;

    .line 343
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapsedLogItem;->mLogItems:Ljava/util/List;

    .line 342
    return-void
.end method


# virtual methods
.method public add(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;)V
    .locals 1
    .param p1, "item"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapsedLogItem;->mLogItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    return-void
.end method

.method public getLogItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapsedLogItem;->mLogItems:Ljava/util/List;

    return-object v0
.end method
