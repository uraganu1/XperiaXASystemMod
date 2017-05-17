.class Lcom/sonymobile/forklift/Forklift$LoadTask;
.super Landroid/os/AsyncTask;
.source "Forklift.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/forklift/Forklift;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mException:Ljava/lang/Exception;

.field private final mForklift:Lcom/sonymobile/forklift/Forklift;

.field private final mLoader:Lcom/sonymobile/forklift/PropertyLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/forklift/PropertyLoader",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/sonymobile/forklift/Forklift$LoadTask;)Lcom/sonymobile/forklift/PropertyLoader;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/forklift/Forklift$LoadTask;->mLoader:Lcom/sonymobile/forklift/PropertyLoader;

    return-object v0
.end method

.method public constructor <init>(Lcom/sonymobile/forklift/Forklift;Lcom/sonymobile/forklift/PropertyLoader;)V
    .locals 1
    .param p1, "forklift"    # Lcom/sonymobile/forklift/Forklift;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/forklift/Forklift;",
            "Lcom/sonymobile/forklift/PropertyLoader",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lcom/sonymobile/forklift/Forklift$LoadTask;, "Lcom/sonymobile/forklift/Forklift$LoadTask<TT;>;"
    .local p2, "loader":Lcom/sonymobile/forklift/PropertyLoader;, "Lcom/sonymobile/forklift/PropertyLoader<TT;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/forklift/Forklift$LoadTask;->mException:Ljava/lang/Exception;

    .line 144
    iput-object p1, p0, Lcom/sonymobile/forklift/Forklift$LoadTask;->mForklift:Lcom/sonymobile/forklift/Forklift;

    .line 145
    iput-object p2, p0, Lcom/sonymobile/forklift/Forklift$LoadTask;->mLoader:Lcom/sonymobile/forklift/PropertyLoader;

    .line 143
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 149
    .local p0, "this":Lcom/sonymobile/forklift/Forklift$LoadTask;, "Lcom/sonymobile/forklift/Forklift$LoadTask<TT;>;"
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/forklift/Forklift$LoadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sonymobile/forklift/Forklift$LoadTask;, "Lcom/sonymobile/forklift/Forklift$LoadTask<TT;>;"
    const/4 v3, 0x0

    .line 150
    iget-object v2, p0, Lcom/sonymobile/forklift/Forklift$LoadTask;->mLoader:Lcom/sonymobile/forklift/PropertyLoader;

    invoke-virtual {v2}, Lcom/sonymobile/forklift/PropertyLoader;->isForceRefreshRequested()Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/sonymobile/forklift/Forklift$LoadTask;->mLoader:Lcom/sonymobile/forklift/PropertyLoader;

    invoke-virtual {v2}, Lcom/sonymobile/forklift/PropertyLoader;->getCachedValue()Ljava/lang/Object;

    move-result-object v0

    .line 153
    .local v0, "cachedValue":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 154
    return-object v0

    .line 158
    .end local v0    # "cachedValue":Ljava/lang/Object;, "TT;"
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/forklift/Forklift$LoadTask;->mLoader:Lcom/sonymobile/forklift/PropertyLoader;

    invoke-virtual {v2}, Lcom/sonymobile/forklift/PropertyLoader;->fetchValue()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 159
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/Exception;
    iput-object v1, p0, Lcom/sonymobile/forklift/Forklift$LoadTask;->mException:Ljava/lang/Exception;

    .line 161
    return-object v3
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lcom/sonymobile/forklift/Forklift$LoadTask;, "Lcom/sonymobile/forklift/Forklift$LoadTask<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/sonymobile/forklift/Forklift$LoadTask;->mForklift:Lcom/sonymobile/forklift/Forklift;

    invoke-static {v0, p0}, Lcom/sonymobile/forklift/Forklift;->-wrap0(Lcom/sonymobile/forklift/Forklift;Lcom/sonymobile/forklift/Forklift$LoadTask;)V

    .line 179
    if-eqz p1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/sonymobile/forklift/Forklift$LoadTask;->mLoader:Lcom/sonymobile/forklift/PropertyLoader;

    invoke-virtual {v0, p1}, Lcom/sonymobile/forklift/PropertyLoader;->keepInCacheIfPossible(Ljava/lang/Object;)V

    .line 177
    :cond_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lcom/sonymobile/forklift/Forklift$LoadTask;, "Lcom/sonymobile/forklift/Forklift$LoadTask<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/sonymobile/forklift/Forklift$LoadTask;->mForklift:Lcom/sonymobile/forklift/Forklift;

    invoke-static {v0, p0}, Lcom/sonymobile/forklift/Forklift;->-wrap0(Lcom/sonymobile/forklift/Forklift;Lcom/sonymobile/forklift/Forklift$LoadTask;)V

    .line 168
    iget-object v0, p0, Lcom/sonymobile/forklift/Forklift$LoadTask;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/sonymobile/forklift/Forklift$LoadTask;->mLoader:Lcom/sonymobile/forklift/PropertyLoader;

    iget-object v1, p0, Lcom/sonymobile/forklift/Forklift$LoadTask;->mException:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/sonymobile/forklift/PropertyLoader;->invokeOnErrorImpl(Ljava/lang/Exception;)V

    .line 170
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/forklift/Forklift$LoadTask;->mLoader:Lcom/sonymobile/forklift/PropertyLoader;

    invoke-virtual {v0, p1}, Lcom/sonymobile/forklift/PropertyLoader;->keepInCacheIfPossible(Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/sonymobile/forklift/Forklift$LoadTask;->mLoader:Lcom/sonymobile/forklift/PropertyLoader;

    invoke-virtual {v0, p1}, Lcom/sonymobile/forklift/PropertyLoader;->invokeOnCompleteImpl(Ljava/lang/Object;)V

    .line 166
    return-void
.end method
