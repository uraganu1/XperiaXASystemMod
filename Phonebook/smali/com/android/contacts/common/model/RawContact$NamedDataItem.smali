.class public Lcom/android/contacts/common/model/RawContact$NamedDataItem;
.super Ljava/lang/Object;
.source "RawContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/RawContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NamedDataItem"
.end annotation


# instance fields
.field public final dataItem:Lcom/android/contacts/common/model/dataitem/DataItem;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/android/contacts/common/model/dataitem/DataItem;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataItem"    # Lcom/android/contacts/common/model/dataitem/DataItem;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;->uri:Landroid/net/Uri;

    .line 64
    iput-object p2, p0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;->dataItem:Lcom/android/contacts/common/model/dataitem/DataItem;

    .line 62
    return-void
.end method
