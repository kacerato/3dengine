.class public Lm4/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm4/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm4/a;->s1(Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;

.field public final synthetic b:Lm4/a;


# direct methods
.method public constructor <init>(Lm4/a;Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lm4/a$c;->b:Lm4/a;

    iput-object p2, p0, Lm4/a$c;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lm4/a$c;->b:Lm4/a;

    iget-object v1, p0, Lm4/a$c;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;

    invoke-static {v0, v1}, Lm4/a;->p1(Lm4/a;Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;)V

    return-void
.end method
