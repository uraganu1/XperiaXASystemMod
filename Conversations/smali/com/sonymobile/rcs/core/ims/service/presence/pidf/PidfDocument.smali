.class public Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;
.super Ljava/lang/Object;
.source "PidfDocument.java"


# instance fields
.field private entity:Ljava/lang/String;

.field private geopriv:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;

.field private person:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;

.field private tuplesList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "entity"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;->entity:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;->tuplesList:Ljava/util/Vector;

    .line 35
    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;->geopriv:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;

    .line 37
    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;->person:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;

    .line 40
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;->entity:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public addTuple(Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;)V
    .locals 10
    .param p1, "newTuple"    # Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 59
    .local v0, "foundTuple":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;->getService()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Service;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Service;->getId()Ljava/lang/String;

    move-result-object v2

    .local v2, "newServiceId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 60
    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;->tuplesList:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v1, v6, :cond_2

    .line 69
    .end local v0    # "foundTuple":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;
    :goto_1
    if-eqz v0, :cond_4

    .line 71
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;->getTimestamp()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    if-nez v5, :cond_1

    .line 72
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;->tuplesList:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 73
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;->tuplesList:Ljava/util/Vector;

    invoke-virtual {v5, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 75
    :cond_1
    :goto_2
    return-void

    .line 61
    .restart local v0    # "foundTuple":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;
    :cond_2
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;->tuplesList:Ljava/util/Vector;

    invoke-virtual {v6, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;

    .line 62
    .local v4, "tuple":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;
    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;->getService()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Service;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Service;->getId()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "serviceId":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_3
    move-object v0, v4

    .local v0, "foundTuple":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;
    goto :goto_1

    .line 70
    .end local v0    # "foundTuple":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;
    .end local v3    # "serviceId":Ljava/lang/String;
    .end local v4    # "tuple":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;
    :cond_4
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;->tuplesList:Ljava/util/Vector;

    invoke-virtual {v5, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public getEntity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;->entity:Ljava/lang/String;

    return-object v0
.end method

.method public getGeopriv()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;->geopriv:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;

    return-object v0
.end method

.method public getPerson()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;->person:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;

    return-object v0
.end method

.method public getTuplesList()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;->tuplesList:Ljava/util/Vector;

    return-object v0
.end method

.method public setGeopriv(Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;)V
    .locals 0
    .param p1, "geopriv"    # Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;->geopriv:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;

    .line 87
    return-void
.end method

.method public setPerson(Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;)V
    .locals 4
    .param p1, "newPerson"    # Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;->person:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;

    if-nez v0, :cond_1

    .line 53
    :goto_0
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;->person:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;

    .line 55
    :cond_0
    return-void

    .line 52
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->getTimestamp()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;->person:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->getTimestamp()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
