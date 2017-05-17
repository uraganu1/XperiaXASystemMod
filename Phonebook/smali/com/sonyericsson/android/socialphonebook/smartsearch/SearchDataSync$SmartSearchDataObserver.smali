.class Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$SmartSearchDataObserver;
.super Landroid/database/ContentObserver;
.source "SearchDataSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmartSearchDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$SmartSearchDataObserver;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;

    .line 318
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 317
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 323
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$SmartSearchDataObserver;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->-wrap1(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;)V

    .line 322
    return-void
.end method
