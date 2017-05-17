.class public Lcom/sonyericsson/android/socialphonebook/util/BannedAction;
.super Ljava/lang/Object;
.source "BannedAction.java"


# static fields
.field public static final ACTION_GAL:Ljava/lang/String; = "gal"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readActions(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0c0009

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "actions":[Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 26
    .local v1, "bannedAction":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    array-length v8, v0

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v3, v0, v6

    .line 27
    .local v3, "item":Ljava/lang/String;
    const-string/jumbo v9, "\\|"

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 28
    .local v4, "keyValue":[Ljava/lang/String;
    if-eqz v4, :cond_1

    array-length v9, v4

    const/4 v10, 0x1

    if-le v9, v10, :cond_1

    .line 29
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v5, "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    array-length v9, v4

    if-ge v2, v9, :cond_0

    .line 31
    aget-object v9, v4, v2

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 33
    :cond_0
    aget-object v9, v4, v7

    invoke-virtual {v1, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .end local v2    # "i":I
    .end local v5    # "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 37
    .end local v3    # "item":Ljava/lang/String;
    .end local v4    # "keyValue":[Ljava/lang/String;
    :cond_2
    return-object v1
.end method
