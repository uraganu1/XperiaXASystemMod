.class public Lgov2/nist/core/NameValue;
.super Lgov2/nist/core/GenericObject;
.source "NameValue.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov2/nist/core/GenericObject;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x19c7fab1bcbf73beL


# instance fields
.field protected final isFlagParameter:Z

.field protected isQuotedString:Z

.field private name:Ljava/lang/String;

.field private quotes:Ljava/lang/String;

.field private separator:Ljava/lang/String;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lgov2/nist/core/GenericObject;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lgov2/nist/core/NameValue;->name:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 62
    iput-object v0, p0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    const-string/jumbo v0, "="

    .line 63
    iput-object v0, p0, Lgov2/nist/core/NameValue;->separator:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 64
    iput-object v0, p0, Lgov2/nist/core/NameValue;->quotes:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov2/nist/core/NameValue;->isFlagParameter:Z

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "n"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Object;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lgov2/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "n"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Object;
    .param p3, "isFlag"    # Z

    .prologue
    .line 75
    invoke-direct {p0}, Lgov2/nist/core/GenericObject;-><init>()V

    .line 79
    iput-object p1, p0, Lgov2/nist/core/NameValue;->name:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    const-string/jumbo v0, "="

    .line 81
    iput-object v0, p0, Lgov2/nist/core/NameValue;->separator:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 82
    iput-object v0, p0, Lgov2/nist/core/NameValue;->quotes:Ljava/lang/String;

    .line 83
    iput-boolean p3, p0, Lgov2/nist/core/NameValue;->isFlagParameter:Z

    .line 84
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 210
    invoke-super {p0}, Lgov2/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/core/NameValue;

    .line 211
    .local v0, "retval":Lgov2/nist/core/NameValue;
    iget-object v1, p0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 212
    :goto_0
    return-object v0

    .line 211
    :cond_0
    iget-object v1, p0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-static {v1}, Lgov2/nist/core/NameValue;->makeClone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov2/nist/core/NameValue;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 157
    iget-object v2, p0, Lgov2/nist/core/NameValue;->name:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 188
    :cond_0
    iget-object v2, p0, Lgov2/nist/core/NameValue;->name:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 201
    :cond_1
    iget-object v2, p0, Lgov2/nist/core/NameValue;->name:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 205
    :goto_0
    return-object p1

    .line 157
    :cond_2
    iget-object v2, p0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lgov2/nist/core/NameValue;->isFlagParameter:Z

    if-nez v2, :cond_0

    .line 158
    iget-object v2, p0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lgov2/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 164
    iget-object v2, p0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lgov2/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 168
    iget-object v2, p0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    .line 184
    iget-object v2, p0, Lgov2/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov2/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov2/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov2/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    return-object p1

    .line 159
    :cond_3
    iget-object v0, p0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v0, Lgov2/nist/core/GenericObject;

    .line 160
    .local v0, "gv":Lgov2/nist/core/GenericObject;
    iget-object v2, p0, Lgov2/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov2/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov2/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    invoke-virtual {v0, p1}, Lgov2/nist/core/GenericObject;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 162
    iget-object v2, p0, Lgov2/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    return-object p1

    .line 165
    .end local v0    # "gv":Lgov2/nist/core/GenericObject;
    :cond_4
    iget-object v1, p0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v1, Lgov2/nist/core/GenericObjectList;

    .line 166
    .local v1, "gvlist":Lgov2/nist/core/GenericObjectList;
    iget-object v2, p0, Lgov2/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov2/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lgov2/nist/core/GenericObjectList;->encode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    return-object p1

    .line 175
    .end local v1    # "gvlist":Lgov2/nist/core/GenericObjectList;
    :cond_5
    iget-boolean v2, p0, Lgov2/nist/core/NameValue;->isQuotedString:Z

    if-nez v2, :cond_6

    .line 179
    iget-object v2, p0, Lgov2/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov2/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    return-object p1

    .line 176
    :cond_6
    iget-object v2, p0, Lgov2/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov2/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov2/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov2/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    return-object p1

    .line 188
    :cond_7
    iget-object v2, p0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 189
    iget-object v2, p0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lgov2/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 193
    iget-object v2, p0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lgov2/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 198
    iget-object v2, p0, Lgov2/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov2/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    return-object p1

    .line 190
    :cond_8
    iget-object v0, p0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v0, Lgov2/nist/core/GenericObject;

    .line 191
    .restart local v0    # "gv":Lgov2/nist/core/GenericObject;
    invoke-virtual {v0, p1}, Lgov2/nist/core/GenericObject;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 192
    return-object p1

    .line 194
    .end local v0    # "gv":Lgov2/nist/core/GenericObject;
    :cond_9
    iget-object v1, p0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v1, Lgov2/nist/core/GenericObjectList;

    .line 195
    .restart local v1    # "gvlist":Lgov2/nist/core/GenericObjectList;
    invoke-virtual {v1}, Lgov2/nist/core/GenericObjectList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    return-object p1

    .line 201
    .end local v1    # "gvlist":Lgov2/nist/core/GenericObjectList;
    :cond_a
    iget-object v2, p0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    if-nez v2, :cond_c

    .line 202
    :cond_b
    iget-object v2, p0, Lgov2/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    return-object p1

    .line 201
    :cond_c
    iget-boolean v2, p0, Lgov2/nist/core/NameValue;->isFlagParameter:Z

    if-nez v2, :cond_b

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 219
    if-eqz p1, :cond_3

    .line 220
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v0, p1

    .line 221
    check-cast v0, Lgov2/nist/core/NameValue;

    .line 222
    .local v0, "that":Lgov2/nist/core/NameValue;
    if-eq p0, v0, :cond_5

    .line 223
    iget-object v5, p0, Lgov2/nist/core/NameValue;->name:Ljava/lang/String;

    if-eqz v5, :cond_6

    :cond_0
    iget-object v5, p0, Lgov2/nist/core/NameValue;->name:Ljava/lang/String;

    if-nez v5, :cond_8

    .line 225
    :goto_0
    iget-object v5, p0, Lgov2/nist/core/NameValue;->name:Ljava/lang/String;

    if-nez v5, :cond_9

    .line 227
    :cond_1
    iget-object v5, p0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    if-nez v5, :cond_a

    :cond_2
    iget-object v5, p0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v5, :cond_c

    .line 229
    :goto_1
    iget-object v5, p0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    iget-object v6, v0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eq v5, v6, :cond_d

    .line 230
    iget-object v5, p0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/String;

    if-nez v5, :cond_e

    .line 237
    iget-object v3, p0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    iget-object v4, v0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 219
    .end local v0    # "that":Lgov2/nist/core/NameValue;
    :cond_3
    return v3

    .line 220
    :cond_4
    return v3

    .line 222
    .restart local v0    # "that":Lgov2/nist/core/NameValue;
    :cond_5
    return v4

    .line 223
    :cond_6
    iget-object v5, v0, Lgov2/nist/core/NameValue;->name:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 224
    :cond_7
    return v3

    .line 223
    :cond_8
    iget-object v5, v0, Lgov2/nist/core/NameValue;->name:Ljava/lang/String;

    if-eqz v5, :cond_7

    goto :goto_0

    .line 225
    :cond_9
    iget-object v5, v0, Lgov2/nist/core/NameValue;->name:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lgov2/nist/core/NameValue;->name:Ljava/lang/String;

    iget-object v6, v0, Lgov2/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 226
    return v3

    .line 227
    :cond_a
    iget-object v5, v0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    if-nez v5, :cond_2

    .line 228
    :cond_b
    return v3

    .line 227
    :cond_c
    iget-object v5, v0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    if-nez v5, :cond_b

    goto :goto_1

    .line 229
    :cond_d
    return v4

    .line 232
    :cond_e
    iget-boolean v5, p0, Lgov2/nist/core/NameValue;->isQuotedString:Z

    if-nez v5, :cond_f

    .line 233
    iget-object v1, p0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 234
    .local v1, "val":Ljava/lang/String;
    iget-object v2, v0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 235
    .local v2, "val1":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_10

    :goto_2
    return v3

    .line 232
    .end local v1    # "val":Ljava/lang/String;
    .end local v2    # "val1":Ljava/lang/String;
    :cond_f
    iget-object v3, p0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    iget-object v4, v0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .restart local v1    # "val":Ljava/lang/String;
    .restart local v2    # "val1":Ljava/lang/String;
    :cond_10
    move v3, v4

    .line 235
    goto :goto_2
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lgov2/nist/core/NameValue;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lgov2/nist/core/NameValue;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lgov2/nist/core/NameValue;->name:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lgov2/nist/core/NameValue;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 255
    iget-object v1, p0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getValueAsObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lgov2/nist/core/NameValue;->isFlagParameter:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 271
    invoke-virtual {p0}, Lgov2/nist/core/NameValue;->encode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setQuotedValue()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov2/nist/core/NameValue;->isQuotedString:Z

    const-string/jumbo v0, "\""

    .line 109
    iput-object v0, p0, Lgov2/nist/core/NameValue;->quotes:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lgov2/nist/core/NameValue;->setValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 263
    iget-object v1, p0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 264
    .local v0, "retval":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    .line 265
    return-object v0
.end method

.method public setValueAsObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 139
    iput-object p1, p0, Lgov2/nist/core/NameValue;->value:Ljava/lang/Object;

    .line 140
    return-void
.end method
