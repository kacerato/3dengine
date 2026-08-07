.class public abstract LKa/D;
.super LKa/a;
.source "SourceFile"


# instance fields
.field public final l:[Ljava/lang/String;

.field public final m:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "serializedName",
            "title",
            "valueLabel",
            "runtimeAliases",
            "serializedAliases"
        }
    .end annotation

    sget-object v0, Lya/H;->COLOR:Lya/H;

    invoke-direct {p0, p1, p2, p3, v0}, LKa/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lya/H;)V

    iput-object p4, p0, LKa/D;->l:[Ljava/lang/String;

    iput-object p5, p0, LKa/D;->m:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public G0(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "material"
        }
    .end annotation

    iget-object v0, p0, LKa/D;->l:[Ljava/lang/String;

    iget-object v1, p0, LKa/D;->m:[Ljava/lang/String;

    invoke-static {p1, v0, v1}, LKa/J;->d(Lcom/itsmagic/engine/Engines/Engine/Material/Material;[Ljava/lang/String;[Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    return-object p1
.end method
