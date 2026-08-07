.class public final LEa/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LEa/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lya/H;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lya/H;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "category",
            "componentName",
            "menuTitle",
            "componentType",
            "runtimeClassName",
            "methodName",
            "parameterTypeNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lya/H;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LEa/b$c;->a:Ljava/lang/String;

    iput-object p2, p0, LEa/b$c;->b:Ljava/lang/String;

    iput-object p3, p0, LEa/b$c;->c:Ljava/lang/String;

    iput-object p4, p0, LEa/b$c;->d:Lya/H;

    iput-object p5, p0, LEa/b$c;->e:Ljava/lang/String;

    iput-object p6, p0, LEa/b$c;->f:Ljava/lang/String;

    iput-object p7, p0, LEa/b$c;->g:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;
    .locals 5

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;-><init>()V

    iget-object v1, p0, LEa/b$c;->d:Lya/H;

    iget-object v2, p0, LEa/b$c;->e:Ljava/lang/String;

    iget-object v3, p0, LEa/b$c;->f:Ljava/lang/String;

    iget-object v4, p0, LEa/b$c;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->G0(Lya/H;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method
