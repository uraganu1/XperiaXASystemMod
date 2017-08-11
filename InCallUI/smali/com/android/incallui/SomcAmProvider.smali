.class Lcom/android/incallui/SomcAmProvider;
.super Ljava/lang/Object;
.source "SomcAmProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SomcAmProvider$SomcAmListener;
    }
.end annotation


# static fields
.field private static sAmProvider:Lcom/android/incallui/SomcAmProvider;


# instance fields
.field private mAmMode:I

.field private mAmModeSubParameter:Ljava/lang/String;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/SomcAmProvider$SomcAmListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/android/incallui/SomcAmProvider;

    invoke-direct {v0}, Lcom/android/incallui/SomcAmProvider;-><init>()V

    sput-object v0, Lcom/android/incallui/SomcAmProvider;->sAmProvider:Lcom/android/incallui/SomcAmProvider;

    .line 15
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/SomcAmProvider;->mAmMode:I

    .line 20
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SomcAmProvider;->mListeners:Ljava/util/List;

    .line 15
    return-void
.end method

.method public static getInstance()Lcom/android/incallui/SomcAmProvider;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/incallui/SomcAmProvider;->sAmProvider:Lcom/android/incallui/SomcAmProvider;

    return-object v0
.end method

.method private showAnsweringMachineFragmentIfNeeded(II)V
    .locals 3
    .param p1, "newMode"    # I
    .param p2, "oldMode"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 91
    if-ne p1, v2, :cond_1

    if-nez p2, :cond_1

    .line 92
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallPresenter;->showAnsweringMachineFragment(Z)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 94
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->showAnsweringMachineFragment(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/android/incallui/SomcAmProvider$SomcAmListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/SomcAmProvider$SomcAmListener;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/incallui/SomcAmProvider;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/incallui/SomcAmProvider;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_0
    return-void
.end method

.method public getAmMode()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/android/incallui/SomcAmProvider;->mAmMode:I

    return v0
.end method

.method public getAmModeSubParameter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/incallui/SomcAmProvider;->mAmModeSubParameter:Ljava/lang/String;

    return-object v0
.end method

.method public onSomcAmModeChange(ILjava/lang/String;)V
    .locals 4
    .param p1, "amMode"    # I
    .param p2, "subParameter"    # Ljava/lang/String;

    .prologue
    .line 42
    iget v2, p0, Lcom/android/incallui/SomcAmProvider;->mAmMode:I

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/SomcAmProvider;->showAnsweringMachineFragmentIfNeeded(II)V

    .line 43
    iput p1, p0, Lcom/android/incallui/SomcAmProvider;->mAmMode:I

    .line 44
    iput-object p2, p0, Lcom/android/incallui/SomcAmProvider;->mAmModeSubParameter:Ljava/lang/String;

    .line 45
    iget-object v2, p0, Lcom/android/incallui/SomcAmProvider;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SomcAmProvider$SomcAmListener;

    .line 46
    .local v0, "l":Lcom/android/incallui/SomcAmProvider$SomcAmListener;
    iget v2, p0, Lcom/android/incallui/SomcAmProvider;->mAmMode:I

    iget-object v3, p0, Lcom/android/incallui/SomcAmProvider;->mAmModeSubParameter:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/android/incallui/SomcAmProvider$SomcAmListener;->onSomcAmModeChanged(ILjava/lang/String;)V

    goto :goto_0

    .line 41
    .end local v0    # "l":Lcom/android/incallui/SomcAmProvider$SomcAmListener;
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/incallui/SomcAmProvider$SomcAmListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/SomcAmProvider$SomcAmListener;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/incallui/SomcAmProvider;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/incallui/SomcAmProvider;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    return-void
.end method
