.class public abstract Lcom/sonymobile/rcs/provider/base/AbstractSelection;
.super Ljava/lang/Object;
.source "AbstractSelection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sonymobile/rcs/provider/base/AbstractSelection",
        "<*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mSelection:Ljava/lang/StringBuilder;

.field private mSelectionArgs:Ljava/util/List;
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
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/base/AbstractSelection;->mSelection:Ljava/lang/StringBuilder;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/base/AbstractSelection;->mSelectionArgs:Ljava/util/List;

    return-void
.end method

.method private valueOf(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 153
    instance-of v0, p1, Ljava/util/Date;

    if-nez v0, :cond_0

    .line 155
    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 157
    instance-of v0, p1, Ljava/lang/Enum;

    if-nez v0, :cond_3

    .line 160
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 154
    :cond_0
    check-cast p1, Ljava/util/Date;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 156
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "0"

    :goto_0
    return-object v0

    :cond_2
    const-string/jumbo v0, "1"

    goto :goto_0

    .line 158
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_3
    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected addEquals(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 69
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/base/AbstractSelection;->mSelection:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    if-eqz p2, :cond_0

    .line 74
    array-length v1, p2

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 87
    aget-object v1, p2, v3

    if-eqz v1, :cond_4

    .line 92
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/base/AbstractSelection;->mSelection:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/base/AbstractSelection;->mSelectionArgs:Ljava/util/List;

    aget-object v2, p2, v3

    invoke-direct {p0, v2}, Lcom/sonymobile/rcs/provider/base/AbstractSelection;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/base/AbstractSelection;->mSelection:Ljava/lang/StringBuilder;

    const-string/jumbo v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/base/AbstractSelection;->mSelection:Ljava/lang/StringBuilder;

    const-string/jumbo v2, " in("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 77
    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-lt v0, v1, :cond_2

    .line 84
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/base/AbstractSelection;->mSelection:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/base/AbstractSelection;->mSelection:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_3

    .line 82
    :goto_2
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/base/AbstractSelection;->mSelectionArgs:Ljava/util/List;

    aget-object v2, p2, v0

    invoke-direct {p0, v2}, Lcom/sonymobile/rcs/provider/base/AbstractSelection;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/base/AbstractSelection;->mSelection:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 89
    .end local v0    # "i":I
    :cond_4
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/base/AbstractSelection;->mSelection:Ljava/lang/StringBuilder;

    const-string/jumbo v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public and()Lcom/sonymobile/rcs/provider/base/AbstractSelection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/base/AbstractSelection;->mSelection:Ljava/lang/StringBuilder;

    const-string/jumbo v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    return-object p0
.end method

.method public args()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 230
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/base/AbstractSelection;->mSelectionArgs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 231
    .local v0, "size":I
    if-eqz v0, :cond_0

    .line 233
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/base/AbstractSelection;->mSelectionArgs:Ljava/util/List;

    new-array v2, v0, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 232
    return-object v1
.end method

.method public delete(Landroid/content/ContentResolver;)I
    .locals 3
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/base/AbstractSelection;->uri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/base/AbstractSelection;->sel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/base/AbstractSelection;->args()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/base/AbstractSelection;->mSelection:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/content/ContentResolver;Landroid/content/ContentValues;)I
    .locals 3
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/base/AbstractSelection;->uri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/base/AbstractSelection;->sel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/base/AbstractSelection;->args()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public abstract uri()Landroid/net/Uri;
.end method
