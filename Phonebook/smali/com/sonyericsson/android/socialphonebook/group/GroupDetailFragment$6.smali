.class Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$6;
.super Ljava/lang/Object;
.source "GroupDetailFragment.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$CursorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$6;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCursorUpdated(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$6;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-wrap7(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;Landroid/database/Cursor;)V

    .line 295
    return-void
.end method
