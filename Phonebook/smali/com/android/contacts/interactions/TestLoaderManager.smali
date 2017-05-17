.class public Lcom/android/contacts/interactions/TestLoaderManager;
.super Landroid/app/LoaderManager;
.source "TestLoaderManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TestLoaderManager"


# instance fields
.field private mDelegate:Landroid/app/LoaderManager;

.field private final mFinishedLoaders:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/contacts/interactions/TestLoaderManager;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mFinishedLoaders:Ljava/util/HashSet;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/app/LoaderManager;-><init>()V

    .line 101
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mFinishedLoaders:Ljava/util/HashSet;

    .line 100
    return-void
.end method


# virtual methods
.method public destroyLoader(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mDelegate:Landroid/app/LoaderManager;

    invoke-virtual {v0, p1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 218
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mDelegate:Landroid/app/LoaderManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/LoaderManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public getDelegate()Landroid/app/LoaderManager;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mDelegate:Landroid/app/LoaderManager;

    return-object v0
.end method

.method public getLoader(I)Landroid/content/Loader;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroid/content/Loader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mDelegate:Landroid/app/LoaderManager;

    invoke-virtual {v0, p1}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<TD;>;)",
            "Landroid/content/Loader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 191
    .local p3, "callback":Landroid/app/LoaderManager$LoaderCallbacks;, "Landroid/app/LoaderManager$LoaderCallbacks<TD;>;"
    iget-object v0, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mDelegate:Landroid/app/LoaderManager;

    new-instance v1, Lcom/android/contacts/interactions/TestLoaderManager$1;

    invoke-direct {v1, p0, p3, p1}, Lcom/android/contacts/interactions/TestLoaderManager$1;-><init>(Lcom/android/contacts/interactions/TestLoaderManager;Landroid/app/LoaderManager$LoaderCallbacks;I)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mFinishedLoaders:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 122
    return-void
.end method

.method public restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<TD;>;)",
            "Landroid/content/Loader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 214
    .local p3, "callback":Landroid/app/LoaderManager$LoaderCallbacks;, "Landroid/app/LoaderManager$LoaderCallbacks<TD;>;"
    iget-object v0, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mDelegate:Landroid/app/LoaderManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public setDelegate(Landroid/app/LoaderManager;)V
    .locals 2
    .param p1, "delegate"    # Landroid/app/LoaderManager;

    .prologue
    .line 111
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mDelegate:Landroid/app/LoaderManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mDelegate:Landroid/app/LoaderManager;

    if-eq v0, p1, :cond_1

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "TestLoaderManager cannot be shared"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mDelegate:Landroid/app/LoaderManager;

    .line 110
    return-void
.end method
