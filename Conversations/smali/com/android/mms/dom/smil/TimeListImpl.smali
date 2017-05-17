.class public Lcom/android/mms/dom/smil/TimeListImpl;
.super Ljava/lang/Object;
.source "TimeListImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/TimeList;


# instance fields
.field private final mTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/smil/Time;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/smil/Time;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "times":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/smil/Time;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/mms/dom/smil/TimeListImpl;->mTimes:Ljava/util/ArrayList;

    .line 35
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/mms/dom/smil/TimeListImpl;->mTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public item(I)Lorg/w3c/dom/smil/Time;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 48
    const/4 v2, 0x0

    .line 50
    .local v2, "time":Lorg/w3c/dom/smil/Time;
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/dom/smil/TimeListImpl;->mTimes:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/w3c/dom/smil/Time;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v2    # "time":Lorg/w3c/dom/smil/Time;
    :goto_0
    return-object v2

    .line 51
    .restart local v2    # "time":Lorg/w3c/dom/smil/Time;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0
.end method
