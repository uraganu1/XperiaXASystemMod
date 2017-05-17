.class Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader$1;
.super Landroid/database/MergeCursor;
.source "DataPickLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;->loadInBackground()Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;

.field final synthetic val$contactsCursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;[Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;
    .param p2, "$anonymous0"    # [Landroid/database/Cursor;
    .param p3, "val$contactsCursor"    # Landroid/database/Cursor;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader$1;->this$0:Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;

    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader$1;->val$contactsCursor:Landroid/database/Cursor;

    invoke-direct {p0, p2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 85
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader$1;->val$contactsCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader$1;->val$contactsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method
