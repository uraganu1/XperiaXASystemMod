.class Lcom/sonyericsson/conversations/ui/animation/Scenario$ViewAction;
.super Lcom/sonyericsson/conversations/ui/animation/Scenario$SyncAction;
.source "Scenario.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/animation/Scenario;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<View:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sonyericsson/conversations/ui/animation/Scenario$SyncAction;"
    }
.end annotation


# instance fields
.field private final mFunctionImpl:Lcom/sonyericsson/conversations/ui/animation/Scenario$Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/conversations/ui/animation/Scenario$Function1",
            "<TView;>;"
        }
    .end annotation
.end field

.field private final mViewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TView;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/sonyericsson/conversations/ui/animation/Scenario$Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TView;",
            "Lcom/sonyericsson/conversations/ui/animation/Scenario$Function1",
            "<TView;>;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "this":Lcom/sonyericsson/conversations/ui/animation/Scenario$ViewAction;, "Lcom/sonyericsson/conversations/ui/animation/Scenario$ViewAction<TView;>;"
    .local p1, "view":Ljava/lang/Object;, "TView;"
    .local p2, "functionImpl":Lcom/sonyericsson/conversations/ui/animation/Scenario$Function1;, "Lcom/sonyericsson/conversations/ui/animation/Scenario$Function1<TView;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/animation/Scenario$SyncAction;-><init>(Lcom/sonyericsson/conversations/ui/animation/Scenario$SyncAction;)V

    .line 224
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario$ViewAction;->mViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 225
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario$ViewAction;->mFunctionImpl:Lcom/sonyericsson/conversations/ui/animation/Scenario$Function1;

    .line 223
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/sonyericsson/conversations/ui/animation/Scenario$Function1;Lcom/sonyericsson/conversations/ui/animation/Scenario$ViewAction;)V
    .locals 0
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "functionImpl"    # Lcom/sonyericsson/conversations/ui/animation/Scenario$Function1;

    .prologue
    .local p0, "this":Lcom/sonyericsson/conversations/ui/animation/Scenario$ViewAction;, "Lcom/sonyericsson/conversations/ui/animation/Scenario$ViewAction<TView;>;"
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/animation/Scenario$ViewAction;-><init>(Ljava/lang/Object;Lcom/sonyericsson/conversations/ui/animation/Scenario$Function1;)V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 230
    .local p0, "this":Lcom/sonyericsson/conversations/ui/animation/Scenario$ViewAction;, "Lcom/sonyericsson/conversations/ui/animation/Scenario$ViewAction<TView;>;"
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario$ViewAction;->mViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 231
    .local v0, "view":Ljava/lang/Object;, "TView;"
    if-eqz v0, :cond_0

    .line 232
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario$ViewAction;->mFunctionImpl:Lcom/sonyericsson/conversations/ui/animation/Scenario$Function1;

    invoke-interface {v1, v0}, Lcom/sonyericsson/conversations/ui/animation/Scenario$Function1;->call(Ljava/lang/Object;)V

    .line 229
    :cond_0
    return-void
.end method
