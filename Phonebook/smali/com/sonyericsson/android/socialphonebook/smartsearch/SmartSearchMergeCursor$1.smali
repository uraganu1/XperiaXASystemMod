.class Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor$1;
.super Landroid/database/DataSetObserver;
.source "SmartSearchMergeCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor$1;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor$1;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->-set0(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;I)I

    .line 38
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor$1;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->-set0(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;I)I

    .line 45
    return-void
.end method
