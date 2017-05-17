.class public Lcom/sonymobile/android/vcard/VCardProperty;
.super Ljava/lang/Object;
.source "VCardProperty.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "vCard"


# instance fields
.field private mByteValue:[B

.field private mGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mParameterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRawValue:Ljava/lang/String;

.field private mValueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardProperty;->mParameterMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addGroup(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardProperty;->mGroupList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardProperty;->mGroupList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    return-void

    .line 86
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardProperty;->mGroupList:Ljava/util/List;

    goto :goto_0
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardProperty;->mParameterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardProperty;->mParameterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 108
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 109
    return-void

    :cond_0
    const-string/jumbo v0, "TYPE"

    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardProperty;->mParameterMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 100
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_1
.end method

.method public addValues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardProperty;->mValueList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardProperty;->mValueList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    :goto_0
    return-void

    .line 136
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardProperty;->mValueList:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs addValues([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardProperty;->mValueList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardProperty;->mValueList:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardProperty;->mValueList:Ljava/util/List;

    goto :goto_0
.end method

.method public getByteValue()[B
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardProperty;->mByteValue:[B

    return-object v0
.end method

.method public getGroupList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardProperty;->mGroupList:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardProperty;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardProperty;->mParameterMap:Ljava/util/Map;

    return-object v0
.end method

.method public getParameters(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardProperty;->mParameterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public getRawValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardProperty;->mRawValue:Ljava/lang/String;

    return-object v0
.end method

.method public getValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardProperty;->mValueList:Ljava/util/List;

    return-object v0
.end method

.method public setByteValue([B)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardProperty;->mByteValue:[B

    .line 144
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardProperty;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 81
    :goto_0
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardProperty;->mName:Ljava/lang/String;

    .line 82
    return-void

    :cond_0
    const-string/jumbo v0, "vCard"

    const-string/jumbo v1, "Property name is re-defined (existing: %s, requested: %s"

    const/4 v2, 0x2

    .line 78
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonymobile/android/vcard/VCardProperty;->mName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardProperty;->mParameterMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public setRawValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardProperty;->mRawValue:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setValues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardProperty;->mValueList:Ljava/util/List;

    .line 124
    return-void
.end method

.method public varargs setValues([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 119
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardProperty;->mValueList:Ljava/util/List;

    .line 120
    return-void
.end method
