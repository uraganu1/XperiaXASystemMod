.class Lcom/sonyericsson/conversations/ui/EditorFragment$2;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/SubjectTextWatcher$SubjectAddedOrDeletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;
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
    .line 2283
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllSubjectCharactersDeleted()V
    .locals 1

    .prologue
    .line 2287
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-wrap9(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 2288
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-wrap5(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 2285
    return-void
.end method

.method public onFirstSubjectCharactersEntered()V
    .locals 1

    .prologue
    .line 2293
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-wrap9(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 2294
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-wrap5(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 2291
    return-void
.end method
