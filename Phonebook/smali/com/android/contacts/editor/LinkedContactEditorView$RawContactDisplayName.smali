.class public Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;
.super Ljava/lang/Object;
.source "LinkedContactEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/LinkedContactEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawContactDisplayName"
.end annotation


# instance fields
.field private rawContactNameValues:Lcom/android/contacts/common/model/ValuesDelta;

.field private rawContactValues:Lcom/android/contacts/common/model/ValuesDelta;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/ValuesDelta;)V
    .locals 0
    .param p1, "rawContactNameValues"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p2, "rawContactValues"    # Lcom/android/contacts/common/model/ValuesDelta;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;->rawContactNameValues:Lcom/android/contacts/common/model/ValuesDelta;

    .line 125
    iput-object p2, p0, Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;->rawContactValues:Lcom/android/contacts/common/model/ValuesDelta;

    .line 123
    return-void
.end method


# virtual methods
.method public getRawContactNameValues()Lcom/android/contacts/common/model/ValuesDelta;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;->rawContactNameValues:Lcom/android/contacts/common/model/ValuesDelta;

    return-object v0
.end method

.method public getRawContactValues()Lcom/android/contacts/common/model/ValuesDelta;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;->rawContactValues:Lcom/android/contacts/common/model/ValuesDelta;

    return-object v0
.end method

.method public setAsContactDefaultDisplayName(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;->rawContactNameValues:Lcom/android/contacts/common/model/ValuesDelta;

    const-string/jumbo v1, "is_super_primary"

    invoke-virtual {v0, v1, p1}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;I)V

    .line 154
    return-void
.end method

.method public setRawContactNameValues(Lcom/android/contacts/common/model/ValuesDelta;)V
    .locals 0
    .param p1, "rawContactNameValues"    # Lcom/android/contacts/common/model/ValuesDelta;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;->rawContactNameValues:Lcom/android/contacts/common/model/ValuesDelta;

    .line 132
    return-void
.end method

.method public setRawContactValues(Lcom/android/contacts/common/model/ValuesDelta;)V
    .locals 0
    .param p1, "rawContactValues"    # Lcom/android/contacts/common/model/ValuesDelta;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;->rawContactValues:Lcom/android/contacts/common/model/ValuesDelta;

    .line 140
    return-void
.end method
