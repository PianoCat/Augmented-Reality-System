precision mediump float;
//uniform sampler2D sTexture;//������������
//���մӶ�����ɫ�������Ĳ���
varying vec4 ambient;
varying vec4 diffuse;
varying vec4 specular;
varying vec3 vTextureCoord;

void main()                         
{    
   //�����������ɫ����ƬԪ
   vec4 finalColor=vec4(vTextureCoord,1);//�������ɫ   
   //����ƬԪ��ɫֵ
   gl_FragColor = finalColor*ambient+finalColor*specular+finalColor*diffuse;

}   