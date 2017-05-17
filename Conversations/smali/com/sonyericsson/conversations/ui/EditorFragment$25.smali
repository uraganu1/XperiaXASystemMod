.class Lcom/sonyericsson/conversations/ui/EditorFragment$25;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/pileview/PileViewController$OnContentDeletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;->initPileView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    .line 2018
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$25;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentDeleted()V
    .locals 2

    .prologue
    .line 2021
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$25;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateComposerViews(Z)V

    .line 2022
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$25;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onPileViewContentDeleted()V

    .line 2023
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$25;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-wrap5(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 2019
    return-void
.end method
