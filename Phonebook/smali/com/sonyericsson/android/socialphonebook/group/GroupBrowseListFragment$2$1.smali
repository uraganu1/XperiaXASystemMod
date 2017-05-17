.class Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$2$1;
.super Lcom/sonyericsson/android/socialphonebook/group/data/GroupListExtDataLoader;
.source "GroupBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$2;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$2;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$2;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$2;
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$2$1;->this$1:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$2;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupListExtDataLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected createSelection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const-string/jumbo v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const-string/jumbo v1, "vnd.android.cursor.item/vnd.sonyericsson.android.group.photo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
