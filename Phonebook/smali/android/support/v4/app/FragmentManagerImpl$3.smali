.class Landroid/support/v4/app/FragmentManagerImpl$3;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/FragmentManagerImpl;->popBackStack(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/FragmentManagerImpl;

.field final synthetic val$flags:I

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/app/FragmentManagerImpl;
    .param p2, "val$name"    # Ljava/lang/String;
    .param p3, "val$flags"    # I

    .prologue
    .line 558
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$3;->this$0:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object p2, p0, Landroid/support/v4/app/FragmentManagerImpl$3;->val$name:Ljava/lang/String;

    iput p3, p0, Landroid/support/v4/app/FragmentManagerImpl$3;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 560
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$3;->this$0:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl$3;->this$0:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl$3;->val$name:Ljava/lang/String;

    iget v3, p0, Landroid/support/v4/app/FragmentManagerImpl$3;->val$flags:I

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    .line 559
    return-void
.end method
