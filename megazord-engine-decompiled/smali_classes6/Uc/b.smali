.class public LUc/b;
.super LOc/i;
.source "SourceFile"


# instance fields
.field public c:I

.field public d:LJAVARuntime/OHString;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, LOc/i;-><init>(I)V

    .line 2
    iput v0, p0, LUc/b;->c:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, LOc/i;-><init>(I)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, LUc/b;->c:I

    return-void
.end method

.method public constructor <init>(LUc/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 11
    invoke-virtual {p1}, LOc/i;->h()I

    move-result v0

    invoke-direct {p0, v0}, LOc/i;-><init>(I)V

    .line 12
    invoke-virtual {p1}, LUc/b;->w0()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 13
    invoke-super {p0, v0}, LOc/i;->I(I)V

    .line 14
    invoke-super {p0, p1}, LOc/i;->K(LOc/i;)V

    .line 15
    :cond_0
    invoke-virtual {p1}, LUc/b;->hashCode()I

    move-result p1

    iput p1, p0, LUc/b;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, LOc/i;-><init>(I)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 7
    invoke-super {p0, v0}, LOc/i;->I(I)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 9
    invoke-super {p0, v0}, LOc/i;->L([C)V

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, LUc/b;->c:I

    return-void
.end method

.method public constructor <init>([C)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cbuf"
        }
    .end annotation

    .line 20
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, LUc/b;-><init>([CII)V

    .line 21
    invoke-virtual {p0}, LUc/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, LUc/b;->c:I

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cbuf",
            "off",
            "len"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p3}, LOc/i;-><init>(I)V

    if-lez p3, :cond_0

    const/4 v0, 0x0

    .line 17
    invoke-super {p0, v0}, LOc/i;->I(I)V

    .line 18
    invoke-super {p0, v0, p1, p2, p3}, LOc/i;->T(I[CII)V

    .line 19
    :cond_0
    invoke-virtual {p0}, LUc/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, LUc/b;->c:I

    return-void
.end method

.method public static C0(LUc/b;)Lcom/google/gson/JsonElement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ohString"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {p0}, LUc/b;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static Y0(LUc/b;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, LUc/b;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b0(CC)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "c1",
            "c2"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static d0(LUc/b;)LUc/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ohString"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LUc/b;->c0()LUc/b;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static n0(Lcom/google/gson/JsonElement;)LUc/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v0, LUc/b;

    invoke-direct {v0, p0}, LUc/b;-><init>(Ljava/lang/String;)V

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, LUc/b;

    invoke-direct {v0, p0}, LUc/b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public A0(LUc/b;LUc/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "replacement"
        }
    .end annotation

    invoke-virtual {p0}, LUc/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LUc/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, LUc/b;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LUc/b;->J0(Ljava/lang/String;)V

    return-void
.end method

.method public B0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "replacement"
        }
    .end annotation

    invoke-virtual {p0}, LUc/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LUc/b;->J0(Ljava/lang/String;)V

    return-void
.end method

.method public D0(C)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LUc/b;->J0(Ljava/lang/String;)V

    return-void
.end method

.method public E0(D)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LUc/b;->J0(Ljava/lang/String;)V

    return-void
.end method

.method public F0(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LUc/b;->J0(Ljava/lang/String;)V

    return-void
.end method

.method public G0(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LUc/b;->J0(Ljava/lang/String;)V

    return-void
.end method

.method public H0(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LUc/b;->J0(Ljava/lang/String;)V

    return-void
.end method

.method public I0(LUc/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    invoke-virtual {p1}, LUc/b;->w0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, LOc/i;->h()I

    move-result v0

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, LOc/i;->N(IZ)V

    invoke-super {p0, v1}, LOc/i;->I(I)V

    invoke-super {p0, p1}, LOc/i;->K(LOc/i;)V

    invoke-super {p0, v1}, LOc/i;->I(I)V

    invoke-virtual {p0}, LUc/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, LUc/b;->c:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LOc/i;->U()V

    invoke-virtual {p0}, LUc/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, LUc/b;->c:I

    :goto_0
    return-void
.end method

.method public J0(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, LOc/i;->N(IZ)V

    invoke-super {p0, v1}, LOc/i;->I(I)V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-super {p0, p1}, LOc/i;->L([C)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LOc/i;->U()V

    :goto_0
    invoke-virtual {p0}, LUc/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, LUc/b;->c:I

    return-void
.end method

.method public K0(S)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LUc/b;->J0(Ljava/lang/String;)V

    return-void
.end method

.method public L0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    invoke-virtual {p0, p1}, LUc/b;->J0(Ljava/lang/String;)V

    return-void
.end method

.method public M0([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cbuf",
            "off",
            "len"
        }
    .end annotation

    if-lez p3, :cond_0

    const/4 v0, 0x0

    invoke-super {p0, p3, v0}, LOc/i;->N(IZ)V

    invoke-super {p0, v0}, LOc/i;->I(I)V

    invoke-super {p0, v0, p1, p2, p3}, LOc/i;->T(I[CII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LOc/i;->U()V

    invoke-virtual {p0}, LUc/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, LUc/b;->c:I

    :goto_0
    return-void
.end method

.method public N0(LJAVARuntime/OHString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, LUc/b;->d:LJAVARuntime/OHString;

    return-void
.end method

.method public O0(LUc/b;)[LUc/b;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    invoke-virtual {p0}, LUc/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LUc/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    new-array v0, v0, [LUc/b;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    new-instance v2, LUc/b;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, LUc/b;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public P0(Ljava/lang/String;)[LUc/b;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    invoke-virtual {p0}, LUc/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    new-array v0, v0, [LUc/b;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    new-instance v2, LUc/b;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, LUc/b;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public Q0(LUc/b;)[LJAVARuntime/OHString;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    invoke-virtual {p0}, LUc/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LUc/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    new-array v0, v0, [LJAVARuntime/OHString;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    new-instance v2, LJAVARuntime/OHString;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, LJAVARuntime/OHString;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public R0(Ljava/lang/String;)[LJAVARuntime/OHString;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    invoke-virtual {p0}, LUc/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    new-array v0, v0, [LJAVARuntime/OHString;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    new-instance v2, LJAVARuntime/OHString;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, LJAVARuntime/OHString;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public S0(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    invoke-virtual {p0}, LUc/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public T0(LUc/b;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, LOc/i;->G()Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, LOc/i;->G()Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, LOc/i;->h()I

    move-result v1

    invoke-virtual {p1}, LOc/i;->h()I

    move-result v2

    if-ge v1, v2, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0, p1}, LOc/i;->W(LOc/i;)Z

    move-result p1

    return p1
.end method

.method public U0(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {p0}, LOc/i;->G()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, LOc/i;->h()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    return v0

    :cond_3
    new-instance v0, LUc/b;

    invoke-direct {v0, p1}, LUc/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, LOc/i;->W(LOc/i;)Z

    move-result p1

    return p1
.end method

.method public V0(I)LUc/b;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startIdx"
        }
    .end annotation

    new-instance v0, LUc/b;

    invoke-virtual {p0}, LOc/i;->h()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-direct {v0, v1}, LUc/b;-><init>(I)V

    invoke-virtual {p0}, LOc/i;->h()I

    move-result v1

    sub-int/2addr v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p0, p1, v1}, LOc/i;->Q(ILOc/i;II)V

    return-object v0
.end method

.method public W0(II)LUc/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startIdx",
            "endIndex"
        }
    .end annotation

    new-instance v0, LUc/b;

    sub-int/2addr p2, p1

    invoke-direct {v0, p2}, LUc/b;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, p1, p2}, LOc/i;->Q(ILOc/i;II)V

    return-object v0
.end method

.method public X0()LJAVARuntime/OHString;
    .locals 1

    iget-object v0, p0, LUc/b;->d:LJAVARuntime/OHString;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/OHString;

    invoke-direct {v0, p0}, LJAVARuntime/OHString;-><init>(LUc/b;)V

    iput-object v0, p0, LUc/b;->d:LJAVARuntime/OHString;

    :cond_0
    return-object v0
.end method

.method public Y(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startIdx"
        }
    .end annotation

    invoke-super {p0, p1}, LOc/i;->Y(I)V

    invoke-virtual {p0}, LUc/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, LUc/b;->c:I

    return-void
.end method

.method public Z(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startIdx",
            "endIndex"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, LUc/b;->Z(II)V

    invoke-virtual {p0}, LUc/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, LUc/b;->c:I

    return-void
.end method

.method public Z0()LUc/b;
    .locals 4

    invoke-virtual {p0}, LUc/b;->x0()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, LUc/b;->a0(I)C

    move-result v3

    if-gt v3, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v0, :cond_1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, LUc/b;->a0(I)C

    move-result v3

    if-gt v3, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    if-gtz v1, :cond_3

    invoke-virtual {p0}, LUc/b;->x0()I

    move-result v2

    if-ge v0, v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, p0

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {p0, v1, v0}, LUc/b;->W0(II)LUc/b;

    move-result-object v0

    :goto_3
    return-object v0
.end method

.method public a0(I)C
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    invoke-virtual {p0, p1}, LOc/i;->B(I)C

    move-result p1

    return p1
.end method

.method public c0()LUc/b;
    .locals 1

    new-instance v0, LUc/b;

    invoke-direct {v0, p0}, LUc/b;-><init>(LUc/b;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, LUc/b;->c0()LUc/b;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, LUc/b;->w0()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    move v1, v0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, LOc/i;->h()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-virtual {p0, v1}, LUc/b;->a0(I)C

    move-result v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return v0
.end method

.method public e0(LUc/b;)LUc/b;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    new-instance v0, LUc/b;

    invoke-virtual {p0}, LOc/i;->h()I

    move-result v1

    invoke-virtual {p1}, LUc/b;->x0()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, LUc/b;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LOc/i;->I(I)V

    invoke-virtual {v0, p0}, LOc/i;->K(LOc/i;)V

    invoke-virtual {p1}, LUc/b;->w0()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, LOc/i;->K(LOc/i;)V

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    instance-of v0, p1, LUc/b;

    if-eqz v0, :cond_0

    check-cast p1, LUc/b;

    invoke-virtual {p0, p1}, LUc/b;->o0(LUc/b;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f0(Ljava/lang/String;)LUc/b;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    new-instance v0, LUc/b;

    invoke-virtual {p0}, LOc/i;->h()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, LUc/b;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LOc/i;->I(I)V

    invoke-virtual {v0, p0}, LOc/i;->K(LOc/i;)V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {v0, p1}, LOc/i;->L([C)V

    :cond_0
    return-object v0
.end method

.method public g0(LUc/b;)LUc/b;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    new-instance v0, LUc/b;

    invoke-virtual {p0}, LOc/i;->h()I

    move-result v1

    invoke-virtual {p1}, LUc/b;->x0()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, LUc/b;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LOc/i;->I(I)V

    invoke-virtual {p1}, LUc/b;->w0()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, LOc/i;->K(LOc/i;)V

    :cond_0
    invoke-virtual {v0, p0}, LOc/i;->K(LOc/i;)V

    return-object v0
.end method

.method public h0(Ljava/lang/String;)LUc/b;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    new-instance v0, LUc/b;

    invoke-virtual {p0}, LOc/i;->h()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, LUc/b;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LOc/i;->I(I)V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {v0, p1}, LOc/i;->L([C)V

    :cond_0
    invoke-virtual {v0, p0}, LOc/i;->K(LOc/i;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, LUc/b;->c:I

    return v0
.end method

.method public i0(LUc/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LOc/i;->G()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, LOc/i;->r(LOc/i;)V

    invoke-virtual {p0}, LUc/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, LUc/b;->c:I

    :cond_0
    return-void
.end method

.method public j0(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-super {p0, p1}, LOc/i;->s([C)V

    invoke-virtual {p0}, LUc/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, LUc/b;->c:I

    :cond_0
    return-void
.end method

.method public k0(LUc/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LOc/i;->G()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, LOc/i;->u(LOc/i;)V

    invoke-virtual {p0}, LUc/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, LUc/b;->c:I

    :cond_0
    return-void
.end method

.method public l0(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-super {p0, p1}, LOc/i;->v([C)V

    invoke-virtual {p0}, LUc/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, LUc/b;->c:I

    :cond_0
    return-void
.end method

.method public m0(LUc/b;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, LUc/b;->w0()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, LUc/b;->w0()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, LOc/i;->E(LOc/i;)I

    move-result p1

    if-ltz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public o0(LUc/b;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, LOc/i;->G()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, LOc/i;->G()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0, p1}, LOc/i;->x(LOc/i;)Z

    move-result p1

    return p1
.end method

.method public p0(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, LOc/i;->G()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-super {p0}, LOc/i;->h()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v0

    :cond_2
    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-virtual {p0, v1}, LUc/b;->a0(I)C

    move-result v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public q0(LUc/b;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, LOc/i;->G()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, LOc/i;->G()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0, p1}, LOc/i;->z(LOc/i;)Z

    move-result p1

    return p1
.end method

.method public r0(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, LOc/i;->G()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-super {p0}, LOc/i;->h()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v0

    :cond_2
    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-virtual {p0, v1}, LUc/b;->a0(I)C

    move-result v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v3, v4}, LUc/b;->b0(CC)Z

    move-result v3

    if-nez v3, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public s0(LUc/b;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    invoke-virtual {p0, p1}, LUc/b;->o0(LUc/b;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public t0(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    invoke-virtual {p0, p1}, LUc/b;->p0(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-super {p0}, LOc/i;->h()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, LOc/i;->B(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u0(LUc/b;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p0}, LUc/b;->w0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, LUc/b;->w0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, LOc/i;->E(LOc/i;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "str can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public v0(Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_4

    invoke-virtual {p0}, LUc/b;->w0()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    :goto_0
    invoke-virtual {p0}, LOc/i;->h()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {p0, v2}, LUc/b;->a0(I)C

    move-result v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    return v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "str can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public w0()Z
    .locals 1

    invoke-virtual {p0}, LOc/i;->h()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public x0()I
    .locals 1

    invoke-virtual {p0}, LOc/i;->h()I

    move-result v0

    return v0
.end method

.method public y0(LUc/b;LUc/b;)LUc/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "replacement"
        }
    .end annotation

    invoke-virtual {p0}, LUc/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LUc/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, LUc/b;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, LUc/b;

    invoke-direct {p2, p1}, LUc/b;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method public z0(Ljava/lang/String;Ljava/lang/String;)LUc/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "replacement"
        }
    .end annotation

    invoke-virtual {p0}, LUc/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, LUc/b;

    invoke-direct {p2, p1}, LUc/b;-><init>(Ljava/lang/String;)V

    return-object p2
.end method
