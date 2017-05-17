.class public Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
.super Landroid/support/v4/app/Fragment;
.source "SupportRequestManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/manager/SupportRequestManagerFragment$1;,
        Lcom/bumptech/glide/manager/SupportRequestManagerFragment$SupportFragmentRequestManagerTreeNode;
    }
.end annotation


# instance fields
.field private final childRequestManagerFragments:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/bumptech/glide/manager/SupportRequestManagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

.field private requestManager:Lcom/bumptech/glide/RequestManager;

.field private final requestManagerTreeNode:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

.field private rootRequestManagerFragment:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;-><init>(Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;)V
    .locals 2
    .param p1, "lifecycle"    # Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 25
    new-instance v0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment$SupportFragmentRequestManagerTreeNode;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment$SupportFragmentRequestManagerTreeNode;-><init>(Lcom/bumptech/glide/manager/SupportRequestManagerFragment;Lcom/bumptech/glide/manager/SupportRequestManagerFragment$1;)V

    iput-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->requestManagerTreeNode:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->childRequestManagerFragments:Ljava/util/HashSet;

    .line 38
    iput-object p1, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    .line 39
    return-void
.end method

.method private addChildRequestManagerFragment(Lcom/bumptech/glide/manager/SupportRequestManagerFragment;)V
    .locals 1
    .param p1, "child"    # Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->childRequestManagerFragments:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method private removeChildRequestManagerFragment(Lcom/bumptech/glide/manager/SupportRequestManagerFragment;)V
    .locals 1
    .param p1, "child"    # Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->childRequestManagerFragments:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method


# virtual methods
.method getLifecycle()Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    return-object v0
.end method

.method public getRequestManager()Lcom/bumptech/glide/RequestManager;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->requestManager:Lcom/bumptech/glide/RequestManager;

    return-object v0
.end method

.method public getRequestManagerTreeNode()Lcom/bumptech/glide/manager/RequestManagerTreeNode;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->requestManagerTreeNode:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 116
    invoke-static {}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get()Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->getSupportRequestManagerFragment(Landroid/support/v4/app/FragmentManager;)Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    .line 118
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    if-ne v0, p0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->addChildRequestManagerFragment(Lcom/bumptech/glide/manager/SupportRequestManagerFragment;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 147
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->onDestroy()V

    .line 148
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 126
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->removeChildRequestManagerFragment(Lcom/bumptech/glide/manager/SupportRequestManagerFragment;)V

    .line 128
    iput-object v1, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    .line 155
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->requestManager:Lcom/bumptech/glide/RequestManager;

    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->requestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->onLowMemory()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 135
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->onStart()V

    .line 136
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 141
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->onStop()V

    .line 142
    return-void
.end method

.method public setRequestManager(Lcom/bumptech/glide/RequestManager;)V
    .locals 0
    .param p1, "requestManager"    # Lcom/bumptech/glide/RequestManager;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->requestManager:Lcom/bumptech/glide/RequestManager;

    .line 48
    return-void
.end method
